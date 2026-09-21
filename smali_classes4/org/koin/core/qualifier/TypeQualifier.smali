.class public final Lorg/koin/core/qualifier/TypeQualifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/koin/core/qualifier/Qualifier;


# instance fields
.field private final type:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/qualifier/TypeQualifier;->type:Lkotlin/reflect/KClass;

    .line 22
    invoke-static {p1}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/koin/core/qualifier/TypeQualifier;->value:Ljava/lang/String;

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

    if-eqz p1, :cond_22

    .line 30
    const-class v2, Lorg/koin/core/qualifier/TypeQualifier;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_22

    .line 32
    :cond_10
    check-cast p1, Lorg/koin/core/qualifier/TypeQualifier;

    .line 34
    invoke-virtual {p0}, Lorg/koin/core/qualifier/TypeQualifier;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/koin/core/qualifier/TypeQualifier;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    return v1

    :cond_21
    return v0

    :cond_22
    :goto_22
    return v1
.end method

.method public final getType()Lkotlin/reflect/KClass;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lorg/koin/core/qualifier/TypeQualifier;->type:Lkotlin/reflect/KClass;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lorg/koin/core/qualifier/TypeQualifier;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 40
    invoke-virtual {p0}, Lorg/koin/core/qualifier/TypeQualifier;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 25
    invoke-virtual {p0}, Lorg/koin/core/qualifier/TypeQualifier;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
