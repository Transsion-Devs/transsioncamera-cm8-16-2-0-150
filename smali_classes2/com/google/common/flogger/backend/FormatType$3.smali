.class final enum Lcom/google/common/flogger/backend/FormatType$3;
.super Lcom/google/common/flogger/backend/FormatType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/FormatType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZZ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/google/common/flogger/backend/FormatType;-><init>(Ljava/lang/String;IZZLcom/google/common/flogger/backend/FormatType$1;)V

    return-void
.end method


# virtual methods
.method public canFormat(Ljava/lang/Object;)Z
    .registers 2

    .line 50
    instance-of p0, p1, Ljava/lang/Character;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 52
    :cond_6
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_15

    instance-of p0, p1, Ljava/lang/Byte;

    if-nez p0, :cond_15

    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    .line 53
    :cond_15
    :goto_15
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result p0

    return p0
.end method
