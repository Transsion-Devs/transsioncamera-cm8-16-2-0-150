.class public final enum Lbytekn/foundation/io/file/FileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lbytekn/foundation/io/file/FileType;

.field public static final enum Directory:Lbytekn/foundation/io/file/FileType;

.field public static final enum Regular:Lbytekn/foundation/io/file/FileType;

.field public static final enum Unknown:Lbytekn/foundation/io/file/FileType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lbytekn/foundation/io/file/FileType;

    const-string v1, "Regular"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbytekn/foundation/io/file/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbytekn/foundation/io/file/FileType;->Regular:Lbytekn/foundation/io/file/FileType;

    new-instance v1, Lbytekn/foundation/io/file/FileType;

    const-string v2, "Directory"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lbytekn/foundation/io/file/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbytekn/foundation/io/file/FileType;->Directory:Lbytekn/foundation/io/file/FileType;

    new-instance v2, Lbytekn/foundation/io/file/FileType;

    const-string v3, "Unknown"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lbytekn/foundation/io/file/FileType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lbytekn/foundation/io/file/FileType;->Unknown:Lbytekn/foundation/io/file/FileType;

    filled-new-array {v0, v1, v2}, [Lbytekn/foundation/io/file/FileType;

    move-result-object v0

    sput-object v0, Lbytekn/foundation/io/file/FileType;->$VALUES:[Lbytekn/foundation/io/file/FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbytekn/foundation/io/file/FileType;
    .registers 2

    const-class v0, Lbytekn/foundation/io/file/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbytekn/foundation/io/file/FileType;

    return-object p0
.end method

.method public static values()[Lbytekn/foundation/io/file/FileType;
    .registers 1

    sget-object v0, Lbytekn/foundation/io/file/FileType;->$VALUES:[Lbytekn/foundation/io/file/FileType;

    invoke-virtual {v0}, [Lbytekn/foundation/io/file/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbytekn/foundation/io/file/FileType;

    return-object v0
.end method
