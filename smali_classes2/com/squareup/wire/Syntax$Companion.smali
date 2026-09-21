.class public final Lcom/squareup/wire/Syntax$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Syntax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/squareup/wire/Syntax$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lcom/squareup/wire/Syntax;
    .registers 6

    const-string p0, "string"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/squareup/wire/Syntax;->values()[Lcom/squareup/wire/Syntax;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :cond_b
    if-ge v1, v0, :cond_1c

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    .line 28
    # getter for: Lcom/squareup/wire/Syntax;->string:Ljava/lang/String;
    invoke-static {v2}, Lcom/squareup/wire/Syntax;->access$getString$p(Lcom/squareup/wire/Syntax;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    return-object v2

    .line 30
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected syntax: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
