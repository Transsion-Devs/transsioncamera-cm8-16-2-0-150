.class public final enum Lbytekn/foundation/io/file/ContentEncoding;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lbytekn/foundation/io/file/ContentEncoding;

.field public static final enum Ascii:Lbytekn/foundation/io/file/ContentEncoding;

.field public static final enum Base64:Lbytekn/foundation/io/file/ContentEncoding;

.field public static final enum Utf8:Lbytekn/foundation/io/file/ContentEncoding;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lbytekn/foundation/io/file/ContentEncoding;

    const-string v1, "Utf8"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbytekn/foundation/io/file/ContentEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbytekn/foundation/io/file/ContentEncoding;->Utf8:Lbytekn/foundation/io/file/ContentEncoding;

    new-instance v1, Lbytekn/foundation/io/file/ContentEncoding;

    const-string v2, "Ascii"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lbytekn/foundation/io/file/ContentEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbytekn/foundation/io/file/ContentEncoding;->Ascii:Lbytekn/foundation/io/file/ContentEncoding;

    new-instance v2, Lbytekn/foundation/io/file/ContentEncoding;

    const-string v3, "Base64"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lbytekn/foundation/io/file/ContentEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lbytekn/foundation/io/file/ContentEncoding;->Base64:Lbytekn/foundation/io/file/ContentEncoding;

    filled-new-array {v0, v1, v2}, [Lbytekn/foundation/io/file/ContentEncoding;

    move-result-object v0

    sput-object v0, Lbytekn/foundation/io/file/ContentEncoding;->$VALUES:[Lbytekn/foundation/io/file/ContentEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbytekn/foundation/io/file/ContentEncoding;
    .registers 2

    const-class v0, Lbytekn/foundation/io/file/ContentEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbytekn/foundation/io/file/ContentEncoding;

    return-object p0
.end method

.method public static values()[Lbytekn/foundation/io/file/ContentEncoding;
    .registers 1

    sget-object v0, Lbytekn/foundation/io/file/ContentEncoding;->$VALUES:[Lbytekn/foundation/io/file/ContentEncoding;

    invoke-virtual {v0}, [Lbytekn/foundation/io/file/ContentEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbytekn/foundation/io/file/ContentEncoding;

    return-object v0
.end method
