.class public abstract synthetic Lbytekn/foundation/io/file/FileManager$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 4

    invoke-static {}, Lbytekn/foundation/io/file/ContentEncoding;->values()[Lbytekn/foundation/io/file/ContentEncoding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbytekn/foundation/io/file/FileManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbytekn/foundation/io/file/ContentEncoding;->Ascii:Lbytekn/foundation/io/file/ContentEncoding;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    invoke-static {}, Lbytekn/foundation/io/file/ContentEncoding;->values()[Lbytekn/foundation/io/file/ContentEncoding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbytekn/foundation/io/file/FileManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v3, v0, v2

    invoke-static {}, Lbytekn/foundation/io/file/ContentEncoding;->values()[Lbytekn/foundation/io/file/ContentEncoding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbytekn/foundation/io/file/FileManager$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
