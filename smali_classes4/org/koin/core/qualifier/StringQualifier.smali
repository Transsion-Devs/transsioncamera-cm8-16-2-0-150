.class public final Lorg/koin/core/qualifier/StringQualifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/koin/core/qualifier/Qualifier;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/qualifier/StringQualifier;->value:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lorg/koin/core/qualifier/StringQualifier;Ljava/lang/String;ILjava/lang/Object;)Lorg/koin/core/qualifier/StringQualifier;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lorg/koin/core/qualifier/StringQualifier;->value:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lorg/koin/core/qualifier/StringQualifier;->copy(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/koin/core/qualifier/StringQualifier;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;
    .registers 2

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/koin/core/qualifier/StringQualifier;

    invoke-direct {p0, p1}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/koin/core/qualifier/StringQualifier;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/koin/core/qualifier/StringQualifier;

    iget-object p0, p0, Lorg/koin/core/qualifier/StringQualifier;->value:Ljava/lang/String;

    iget-object p1, p1, Lorg/koin/core/qualifier/StringQualifier;->value:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 18
    iget-object p0, p0, Lorg/koin/core/qualifier/StringQualifier;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lorg/koin/core/qualifier/StringQualifier;->value:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 20
    invoke-virtual {p0}, Lorg/koin/core/qualifier/StringQualifier;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
