.class public final synthetic Lorg/apache/commons/io/input/CharacterSetFilterReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/input/CharacterSetFilterReader$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/apache/commons/io/input/CharacterSetFilterReader$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    invoke-static {p0, p1}, Lorg/apache/commons/io/input/CharacterSetFilterReader;->$r8$lambda$9npoxxQ2Ro-WjeWlcjb3SKAsWsI(Ljava/util/Set;I)Z

    move-result p0

    return p0
.end method
