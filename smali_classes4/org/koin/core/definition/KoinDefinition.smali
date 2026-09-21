.class public final Lorg/koin/core/definition/KoinDefinition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/koin/core/module/KoinDslMarker;
.end annotation


# instance fields
.field private final factory:Lorg/koin/core/instance/InstanceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/koin/core/instance/InstanceFactory<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final module:Lorg/koin/core/module/Module;


# direct methods
.method public constructor <init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/module/Module;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/koin/core/definition/KoinDefinition;->module:Lorg/koin/core/module/Module;

    iput-object p2, p0, Lorg/koin/core/definition/KoinDefinition;->factory:Lorg/koin/core/instance/InstanceFactory;

    return-void
.end method

.method public static synthetic copy$default(Lorg/koin/core/definition/KoinDefinition;Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;ILjava/lang/Object;)Lorg/koin/core/definition/KoinDefinition;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lorg/koin/core/definition/KoinDefinition;->module:Lorg/koin/core/module/Module;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lorg/koin/core/definition/KoinDefinition;->factory:Lorg/koin/core/instance/InstanceFactory;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lorg/koin/core/definition/KoinDefinition;->copy(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)Lorg/koin/core/definition/KoinDefinition;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/koin/core/module/Module;
    .registers 1

    iget-object p0, p0, Lorg/koin/core/definition/KoinDefinition;->module:Lorg/koin/core/module/Module;

    return-object p0
.end method

.method public final component2()Lorg/koin/core/instance/InstanceFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/koin/core/instance/InstanceFactory<",
            "TR;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/koin/core/definition/KoinDefinition;->factory:Lorg/koin/core/instance/InstanceFactory;

    return-object p0
.end method

.method public final copy(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)Lorg/koin/core/definition/KoinDefinition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/module/Module;",
            "Lorg/koin/core/instance/InstanceFactory<",
            "TR;>;)",
            "Lorg/koin/core/definition/KoinDefinition<",
            "TR;>;"
        }
    .end annotation

    const-string p0, "module"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "factory"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/koin/core/definition/KoinDefinition;

    invoke-direct {p0, p1, p2}, Lorg/koin/core/definition/KoinDefinition;-><init>(Lorg/koin/core/module/Module;Lorg/koin/core/instance/InstanceFactory;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/koin/core/definition/KoinDefinition;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/koin/core/definition/KoinDefinition;

    iget-object v1, p0, Lorg/koin/core/definition/KoinDefinition;->module:Lorg/koin/core/module/Module;

    iget-object v3, p1, Lorg/koin/core/definition/KoinDefinition;->module:Lorg/koin/core/module/Module;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lorg/koin/core/definition/KoinDefinition;->factory:Lorg/koin/core/instance/InstanceFactory;

    iget-object p1, p1, Lorg/koin/core/definition/KoinDefinition;->factory:Lorg/koin/core/instance/InstanceFactory;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getFactory()Lorg/koin/core/instance/InstanceFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/koin/core/instance/InstanceFactory<",
            "TR;>;"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lorg/koin/core/definition/KoinDefinition;->factory:Lorg/koin/core/instance/InstanceFactory;

    return-object p0
.end method

.method public final getModule()Lorg/koin/core/module/Module;
    .registers 1

    .line 8
    iget-object p0, p0, Lorg/koin/core/definition/KoinDefinition;->module:Lorg/koin/core/module/Module;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/koin/core/definition/KoinDefinition;->module:Lorg/koin/core/module/Module;

    invoke-virtual {v0}, Lorg/koin/core/module/Module;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/koin/core/definition/KoinDefinition;->factory:Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {p0}, Lorg/koin/core/instance/InstanceFactory;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KoinDefinition(module="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/koin/core/definition/KoinDefinition;->module:Lorg/koin/core/module/Module;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", factory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/koin/core/definition/KoinDefinition;->factory:Lorg/koin/core/instance/InstanceFactory;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
