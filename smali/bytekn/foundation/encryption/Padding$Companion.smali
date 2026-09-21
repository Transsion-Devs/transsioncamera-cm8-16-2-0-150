.class public final Lbytekn/foundation/encryption/Padding$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbytekn/foundation/encryption/Padding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lbytekn/foundation/encryption/Padding$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final removePadding([BLbytekn/foundation/encryption/Padding;)[B
    .registers 5

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "padding"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object p0, Lbytekn/foundation/encryption/Padding$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_4d

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3f

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3f

    const/4 v0, 0x5

    if-ne p0, v0, :cond_39

    .line 60
    array-length p0, p1

    sub-int/2addr p0, p2

    move p2, v1

    :goto_25
    if-ltz p0, :cond_31

    .line 61
    aget-byte v0, p1, p0

    if-eqz v0, :cond_2c

    goto :goto_31

    :cond_2c
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_25

    .line 66
    :cond_31
    :goto_31
    array-length p0, p1

    sub-int/2addr p0, p2

    new-array p2, p0, [B

    .line 67
    invoke-static {p1, v1, p2, v1, p0}, Lbytekn/foundation/encryption/EncryptionToolsKt;->arraycopy([BI[BII)[B

    return-object p2

    .line 68
    :cond_39
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 53
    :cond_3f
    array-length p0, p1

    sub-int/2addr p0, p2

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    .line 54
    array-length p2, p1

    sub-int/2addr p2, p0

    new-array p0, p2, [B

    .line 55
    invoke-static {p1, v1, p0, v1, p2}, Lbytekn/foundation/encryption/EncryptionToolsKt;->arraycopy([BI[BII)[B

    return-object p0

    :cond_4d
    return-object p1
.end method
