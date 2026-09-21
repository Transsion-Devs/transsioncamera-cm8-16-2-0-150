.class public final Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Checker"
.end annotation


# instance fields
.field private final _toIgnore:Ljava/util/Set;

.field private final _toInclude:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    .line 94
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 96
    :cond_7
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->_toIgnore:Ljava/util/Set;

    .line 97
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->_toInclude:Ljava/util/Set;

    return-void
.end method

.method public static construct(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;
    .registers 3

    .line 101
    new-instance v0, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public shouldIgnore(Ljava/lang/Object;)Z
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->_toInclude:Ljava/util/Set;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_a
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->_toIgnore:Ljava/util/Set;

    .line 107
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
