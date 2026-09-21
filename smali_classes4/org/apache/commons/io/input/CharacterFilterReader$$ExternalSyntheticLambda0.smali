.class public final synthetic Lorg/apache/commons/io/input/CharacterFilterReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/io/input/CharacterFilterReader$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 2

    .line 0
    iget p0, p0, Lorg/apache/commons/io/input/CharacterFilterReader$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {p0, p1}, Lorg/apache/commons/io/input/CharacterFilterReader;->$r8$lambda$X8zeV43Q3VR63fms04KyDRieQ78(II)Z

    move-result p0

    return p0
.end method
