.class public abstract Lcom/opensource/svgaplayer/entities/SVGAPathEntityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VALID_METHODS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 7
    const-string v19, "a"

    const-string v20, "z"

    const-string v1, "M"

    const-string v2, "L"

    const-string v3, "H"

    const-string v4, "V"

    const-string v5, "C"

    const-string v6, "S"

    const-string v7, "Q"

    const-string v8, "R"

    const-string v9, "A"

    const-string v10, "Z"

    const-string v11, "m"

    const-string v12, "l"

    const-string v13, "h"

    const-string v14, "v"

    const-string v15, "c"

    const-string v16, "s"

    const-string v17, "q"

    const-string v18, "r"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/entities/SVGAPathEntityKt;->VALID_METHODS:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getVALID_METHODS$p()Ljava/util/Set;
    .registers 1

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAPathEntityKt;->VALID_METHODS:Ljava/util/Set;

    return-object v0
.end method
