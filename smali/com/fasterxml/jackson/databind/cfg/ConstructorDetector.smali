.class public final Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

.field public static final EXPLICIT_ONLY:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

.field public static final USE_DELEGATING:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

.field public static final USE_PROPERTIES_BASED:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;


# instance fields
.field protected final _allowJDKTypeCtors:Z

.field protected final _requireCtorAnnotation:Z

.field protected final _singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 80
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->HEURISTIC:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->DEFAULT:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 87
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->PROPERTIES:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->USE_PROPERTIES_BASED:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 94
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->DELEGATING:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->USE_DELEGATING:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 101
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->REQUIRE_MODE:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->EXPLICIT_ONLY:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;)V
    .registers 3

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0, v0}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;ZZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;ZZ)V
    .registers 4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    .line 136
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_requireCtorAnnotation:Z

    .line 137
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_allowJDKTypeCtors:Z

    return-void
.end method


# virtual methods
.method public requireCtorAnnotation()Z
    .registers 1

    .line 174
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_requireCtorAnnotation:Z

    return p0
.end method

.method public shouldIntrospectorImplicitConstructors(Ljava/lang/Class;)Z
    .registers 4

    .line 201
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_requireCtorAnnotation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 205
    :cond_6
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_allowJDKTypeCtors:Z

    if-nez p0, :cond_19

    .line 206
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJDKClass(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 210
    const-class p0, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_19

    return v1

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public singleArgCreatorDefaultsToDelegating()Z
    .registers 2

    .line 182
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->DELEGATING:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public singleArgCreatorDefaultsToProperties()Z
    .registers 2

    .line 186
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->PROPERTIES:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public singleArgMode()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->_singleArgMode:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    return-object p0
.end method
