.class public final Lcom/squareup/wire/FieldEncoding$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/FieldEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/squareup/wire/FieldEncoding$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get$wire_runtime(I)Lcom/squareup/wire/FieldEncoding;
    .registers 3

    if-eqz p1, :cond_24

    const/4 p0, 0x1

    if-eq p1, p0, :cond_21

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1e

    const/4 p0, 0x5

    if-ne p1, p0, :cond_e

    .line 44
    sget-object p0, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    return-object p0

    .line 45
    :cond_e
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Unexpected FieldEncoding: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_1e
    sget-object p0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    return-object p0

    .line 42
    :cond_21
    sget-object p0, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    return-object p0

    .line 41
    :cond_24
    sget-object p0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    return-object p0
.end method
