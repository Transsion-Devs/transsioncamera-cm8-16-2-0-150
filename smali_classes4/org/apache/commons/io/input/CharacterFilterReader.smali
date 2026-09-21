.class public Lorg/apache/commons/io/input/CharacterFilterReader;
.super Lorg/apache/commons/io/input/AbstractCharacterFilterReader;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$X8zeV43Q3VR63fms04KyDRieQ78(II)Z
    .registers 2

    .line 38
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4

    .line 38
    new-instance v0, Lorg/apache/commons/io/input/CharacterFilterReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lorg/apache/commons/io/input/CharacterFilterReader$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V

    return-void
.end method
